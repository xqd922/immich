import { Injectable } from '@nestjs/common';
import { Kysely } from 'kysely';
import { InjectKysely } from 'nestjs-kysely';
import { DummyValue, GenerateSql } from 'src/decorators';
import { DatabaseAction, EntityType } from 'src/enum';
import { DB } from 'src/schema';

export interface AuditSearch {
  action?: DatabaseAction;
  entityType?: EntityType;
  userIds: string[];
}

@Injectable()
export class AuditRepository {
  constructor(@InjectKysely() private db: Kysely<DB>) {}

  @GenerateSql({
    params: [
      DummyValue.DATE,
      { action: DatabaseAction.Create, entityType: EntityType.Asset, userIds: [DummyValue.UUID] },
    ],
  })
  async getAfter(since: Date, options: AuditSearch): Promise<string[]> {
    const records = await this.db
      .selectFrom('audit')
      .where('audit.createdAt', '>', since)
      .$if(!!options.action, (qb) => qb.where('audit.action', '=', options.action!))
      .$if(!!options.entityType, (qb) => qb.where('audit.entityType', '=', options.entityType!))
      .where('audit.ownerId', 'in', options.userIds)
      .distinctOn(['audit.entityId', 'audit.entityType'])
      .orderBy('audit.entityId', 'desc')
      .orderBy('audit.entityType', 'desc')
      .orderBy('audit.createdAt', 'desc')
      .select('audit.entityId')
      .execute();

    return records.map(({ entityId }) => entityId);
  }

  async removeBefore(before: Date): Promise<void> {
    await this.db.deleteFrom('audit').where('createdAt', '<', before).execute();
  }
}
