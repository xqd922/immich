import { Column, ConstraintType, DatabaseSchema, Table, Unique } from 'src/sql-tools';

@Table()
@Unique({ columns: ['id'] })
export class Table1 {
  @Column({ type: 'uuid' })
  id!: string;
}

export const description = 'should add a unique constraint to the table with a default name';
export const schema: DatabaseSchema = {
  databaseName: 'postgres',
  schemaName: 'public',
  functions: [],
  enums: [],
  extensions: [],
  parameters: [],
  overrides: [],
  tables: [
    {
      name: 'table1',
      columns: [
        {
          name: 'id',
          tableName: 'table1',
          type: 'uuid',
          nullable: false,
          isArray: false,
          primary: false,
          synchronize: true,
        },
      ],
      indexes: [],
      triggers: [],
      constraints: [
        {
          type: ConstraintType.UNIQUE,
          name: 'UQ_b249cc64cf63b8a22557cdc8537',
          tableName: 'table1',
          columnNames: ['id'],
          synchronize: true,
        },
      ],
      synchronize: true,
    },
  ],
  warnings: [],
};
