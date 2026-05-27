.class public final Llyb;
.super Lapx;


# instance fields
.field final synthetic b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;)V
    .locals 0

    iput-object p1, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lapx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Laqp;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `ResourceEntity` (`title` TEXT, `experienceId` TEXT, `queryableTags` TEXT NOT NULL, `queryableEpochTimestamp` INTEGER, `queryableDuration` INTEGER, `approximateTotalSize` INTEGER NOT NULL, `namespaceId` TEXT, `partitionId` TEXT, `f250ResourceId` TEXT, `f250AutoUploadDelay` INTEGER, `airlockExpiration` INTEGER, `f250Expiration` INTEGER, `wipeout` BLOB, `deleteAirlockFilesOnceUploaded` INTEGER NOT NULL, `nonSignedInDataOwners` TEXT NOT NULL, `overridenObfuscatedGaiaId` TEXT, `uploadTransferHandle` TEXT, `relations` BLOB, `provenance` BLOB, `indexTokens` BLOB, `onDeviceId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `status_addedToAirlockEpochTimestamp` INTEGER NOT NULL, `status_uploadToF250RequestedEpochTimestamp` INTEGER, `status_uploadToF250CompletedEpochTimestamp` INTEGER, `status_airlockFileState` INTEGER NOT NULL, `status_uploadState` INTEGER NOT NULL, `status_uploadProgressPercent` REAL NOT NULL)"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE VIRTUAL TABLE IF NOT EXISTS `ResourceFts` USING FTS4(`experienceId` TEXT, `queryableTags` TEXT NOT NULL, `namespaceId` TEXT, `partitionId` TEXT, `f250ResourceId` TEXT, `nonSignedInDataOwners` TEXT NOT NULL, content=`ResourceEntity`)"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_BEFORE_UPDATE BEFORE UPDATE ON `ResourceEntity` BEGIN DELETE FROM `ResourceFts` WHERE `docid`=OLD.`rowid`; END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_BEFORE_DELETE BEFORE DELETE ON `ResourceEntity` BEGIN DELETE FROM `ResourceFts` WHERE `docid`=OLD.`rowid`; END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_AFTER_UPDATE AFTER UPDATE ON `ResourceEntity` BEGIN INSERT INTO `ResourceFts`(`docid`, `experienceId`, `queryableTags`, `namespaceId`, `partitionId`, `f250ResourceId`, `nonSignedInDataOwners`) VALUES (NEW.`rowid`, NEW.`experienceId`, NEW.`queryableTags`, NEW.`namespaceId`, NEW.`partitionId`, NEW.`f250ResourceId`, NEW.`nonSignedInDataOwners`); END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_AFTER_INSERT AFTER INSERT ON `ResourceEntity` BEGIN INSERT INTO `ResourceFts`(`docid`, `experienceId`, `queryableTags`, `namespaceId`, `partitionId`, `f250ResourceId`, `nonSignedInDataOwners`) VALUES (NEW.`rowid`, NEW.`experienceId`, NEW.`queryableTags`, NEW.`namespaceId`, NEW.`partitionId`, NEW.`f250ResourceId`, NEW.`nonSignedInDataOwners`); END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `AnnotachmentEntity` (`resourceOnDeviceId` INTEGER NOT NULL, `isAttachment` INTEGER NOT NULL, `id` TEXT, `contentType` TEXT, `provenance` BLOB, `onDeviceSize` INTEGER NOT NULL, `uploadTransferHandle` TEXT, `blobstoreId` TEXT, `contentHash` TEXT, `onDeviceId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `status_addedToAirlockEpochTimestamp` INTEGER NOT NULL, `status_uploadToF250RequestedEpochTimestamp` INTEGER, `status_uploadToF250CompletedEpochTimestamp` INTEGER, `status_airlockFileState` INTEGER NOT NULL, `status_uploadState` INTEGER NOT NULL, `status_uploadProgressPercent` REAL NOT NULL, FOREIGN KEY(`resourceOnDeviceId`) REFERENCES `ResourceEntity`(`onDeviceId`) ON UPDATE NO ACTION ON DELETE NO ACTION )"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_AnnotachmentEntity_resourceOnDeviceId` ON `AnnotachmentEntity` (`resourceOnDeviceId`)"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `F250LogEntity` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `resourceOnDeviceIds` TEXT NOT NULL, `f250LogAction` TEXT NOT NULL, `logEpochTimestamp` INTEGER NOT NULL, `f250LogReason` INTEGER NOT NULL, `errorMessage` TEXT)"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'12dd2799a8f9d4b7738f03f617a61c16\')"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Laqp;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `ResourceEntity`"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `ResourceFts`"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `AnnotachmentEntity`"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `F250LogEntity`"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    iget-object p1, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    iget-object p1, p1, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Laqp;)V
    .locals 2

    iget-object v0, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    iput-object p1, v0, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;->a:Laqp;

    const-string v0, "PRAGMA foreign_keys = ON"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    iget-object v0, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    invoke-virtual {v0, p1}, Lapt;->p(Laqp;)V

    iget-object v0, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laem;

    invoke-virtual {v1, p1}, Laem;->d(Laqp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Laqp;)V
    .locals 1

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_BEFORE_UPDATE BEFORE UPDATE ON `ResourceEntity` BEGIN DELETE FROM `ResourceFts` WHERE `docid`=OLD.`rowid`; END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_BEFORE_DELETE BEFORE DELETE ON `ResourceEntity` BEGIN DELETE FROM `ResourceFts` WHERE `docid`=OLD.`rowid`; END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_AFTER_UPDATE AFTER UPDATE ON `ResourceEntity` BEGIN INSERT INTO `ResourceFts`(`docid`, `experienceId`, `queryableTags`, `namespaceId`, `partitionId`, `f250ResourceId`, `nonSignedInDataOwners`) VALUES (NEW.`rowid`, NEW.`experienceId`, NEW.`queryableTags`, NEW.`namespaceId`, NEW.`partitionId`, NEW.`f250ResourceId`, NEW.`nonSignedInDataOwners`); END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS room_fts_content_sync_ResourceFts_AFTER_INSERT AFTER INSERT ON `ResourceEntity` BEGIN INSERT INTO `ResourceFts`(`docid`, `experienceId`, `queryableTags`, `namespaceId`, `partitionId`, `f250ResourceId`, `nonSignedInDataOwners`) VALUES (NEW.`rowid`, NEW.`experienceId`, NEW.`queryableTags`, NEW.`namespaceId`, NEW.`partitionId`, NEW.`f250ResourceId`, NEW.`nonSignedInDataOwners`); END"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Laqp;)V
    .locals 0

    invoke-static {p1}, Laey;->d(Laqp;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Llyb;->b:Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;

    iget-object v0, v0, Lcom/google/android/libraries/vision/visionkit/f250/internal/airlock/room/F250RoomDatabase_Impl;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laem;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Laqp;)Lnom;
    .locals 36

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Laqe;

    const-string v4, "title"

    const-string v5, "TEXT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v5, "experienceId"

    const-string v6, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "experienceId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v5, "queryableTags"

    const-string v6, "TEXT"

    const/4 v7, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "queryableTags"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v6, "queryableEpochTimestamp"

    const-string v7, "INTEGER"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "queryableEpochTimestamp"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v7, "queryableDuration"

    const-string v8, "INTEGER"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "queryableDuration"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v7, "approximateTotalSize"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "approximateTotalSize"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v7, "namespaceId"

    const-string v8, "TEXT"

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "namespaceId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v7, "partitionId"

    const-string v8, "TEXT"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "partitionId"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v8, "f250ResourceId"

    const-string v9, "TEXT"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "f250ResourceId"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v9, "f250AutoUploadDelay"

    const-string v10, "INTEGER"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "f250AutoUploadDelay"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "airlockExpiration"

    const-string v11, "INTEGER"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "airlockExpiration"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "f250Expiration"

    const-string v11, "INTEGER"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "f250Expiration"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "wipeout"

    const-string v11, "BLOB"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "wipeout"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "deleteAirlockFilesOnceUploaded"

    const-string v11, "INTEGER"

    const/4 v12, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "deleteAirlockFilesOnceUploaded"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "nonSignedInDataOwners"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "nonSignedInDataOwners"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v10, "overridenObfuscatedGaiaId"

    const-string v11, "TEXT"

    const/4 v12, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "overridenObfuscatedGaiaId"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v11, "uploadTransferHandle"

    const-string v12, "TEXT"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "uploadTransferHandle"

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v11, "relations"

    const-string v12, "BLOB"

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "relations"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v12, "provenance"

    const-string v13, "BLOB"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "provenance"

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v12, "indexTokens"

    const-string v13, "BLOB"

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "indexTokens"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v13, "onDeviceId"

    const-string v14, "INTEGER"

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "onDeviceId"

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v13, "status_addedToAirlockEpochTimestamp"

    const-string v14, "INTEGER"

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "status_addedToAirlockEpochTimestamp"

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v14, "status_uploadToF250RequestedEpochTimestamp"

    const-string v15, "INTEGER"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "status_uploadToF250RequestedEpochTimestamp"

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v15, "status_uploadToF250CompletedEpochTimestamp"

    const-string v16, "INTEGER"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "status_uploadToF250CompletedEpochTimestamp"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v16, "status_airlockFileState"

    const-string v17, "INTEGER"

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "status_airlockFileState"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v17, "status_uploadState"

    const-string v18, "INTEGER"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v16, v15

    const-string v15, "status_uploadState"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v18, "status_uploadProgressPercent"

    const-string v19, "REAL"

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v23}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v17, v15

    const-string v15, "status_uploadProgressPercent"

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    move-object/from16 v18, v15

    const/4 v15, 0x0

    invoke-direct {v2, v15}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v19, v14

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    new-instance v15, Laqi;

    move-object/from16 v21, v13

    const-string v13, "ResourceEntity"

    invoke-direct {v15, v13, v1, v2, v14}, Laqi;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v13}, Lafe;->h(Laqp;Ljava/lang/String;)Laqi;

    move-result-object v1

    invoke-virtual {v15, v1}, Laqi;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "\n Found:\n"

    if-nez v2, :cond_0

    new-instance v0, Lnom;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResourceEntity(com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.ResourceEntity).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnom;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Laqd;

    const-string v4, "CREATE VIRTUAL TABLE IF NOT EXISTS `ResourceFts` USING FTS4(`experienceId` TEXT, `queryableTags` TEXT NOT NULL, `namespaceId` TEXT, `partitionId` TEXT, `f250ResourceId` TEXT, `nonSignedInDataOwners` TEXT NOT NULL, content=`ResourceEntity`)"

    invoke-static {v4}, Lafa;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Laqd;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {}, Lljr;->R()Ljava/util/Set;

    move-result-object v1

    const-string v4, "PRAGMA table_info(`ResourceFts`)"

    invoke-interface {v0, v4}, Laqp;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lljr;->U(Ljava/util/Set;)V

    const-string v4, "SELECT * FROM sqlite_master WHERE `name` = \'ResourceFts\'"

    invoke-interface {v0, v4}, Laqp;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "sql"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v4, v5}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lafa;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    new-instance v6, Laqd;

    invoke-direct {v6, v1, v4}, Laqd;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v3, v6}, Laqd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lnom;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResourceFts(com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.ResourceFts).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnom;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v3, Laqe;

    const-string v23, "resourceOnDeviceId"

    const-string v24, "INTEGER"

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x1

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "resourceOnDeviceId"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "isAttachment"

    const-string v24, "INTEGER"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "isAttachment"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "id"

    const-string v24, "TEXT"

    const/16 v25, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "id"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "contentType"

    const-string v24, "TEXT"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "contentType"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "provenance"

    const-string v24, "BLOB"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v30, "onDeviceSize"

    const-string v31, "INTEGER"

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v35}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "onDeviceSize"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "uploadTransferHandle"

    const-string v24, "TEXT"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v30, "blobstoreId"

    const-string v31, "TEXT"

    const/16 v32, 0x0

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v35}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "blobstoreId"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "contentHash"

    const-string v24, "TEXT"

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "contentHash"

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "onDeviceId"

    const-string v24, "INTEGER"

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v30, "status_addedToAirlockEpochTimestamp"

    const-string v31, "INTEGER"

    const/16 v32, 0x1

    move-object/from16 v29, v3

    invoke-direct/range {v29 .. v35}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v23, "status_uploadToF250RequestedEpochTimestamp"

    const-string v24, "INTEGER"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v28}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v21

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v22, "status_uploadToF250CompletedEpochTimestamp"

    const-string v23, "INTEGER"

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v19

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v22, "status_airlockFileState"

    const-string v23, "INTEGER"

    const/16 v24, 0x1

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v16

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v22, "status_uploadState"

    const-string v23, "INTEGER"

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v17

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Laqe;

    const-string v22, "status_uploadProgressPercent"

    const-string v23, "REAL"

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v18

    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Laqf;

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    new-array v8, v6, [Ljava/lang/String;

    aput-object v11, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v15, "ResourceEntity"

    const-string v16, "NO ACTION"

    const-string v17, "NO ACTION"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Laqf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Laqh;

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-array v9, v6, [Ljava/lang/String;

    const-string v11, "ASC"

    aput-object v11, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_AnnotachmentEntity_resourceOnDeviceId"

    invoke-direct {v8, v11, v10, v4, v9}, Laqh;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Laqi;

    const-string v8, "AnnotachmentEntity"

    invoke-direct {v4, v8, v1, v3, v7}, Laqi;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "AnnotachmentEntity"

    invoke-static {v0, v1}, Lafe;->h(Laqp;Ljava/lang/String;)Laqi;

    move-result-object v1

    invoke-virtual {v4, v1}, Laqi;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lnom;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotachmentEntity(com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.AnnotachmentEntity).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lnom;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Laqe;

    const-string v22, "id"

    const-string v23, "INTEGER"

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v22, "resourceOnDeviceIds"

    const-string v23, "TEXT"

    const/16 v25, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "resourceOnDeviceIds"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v22, "f250LogAction"

    const-string v23, "TEXT"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "f250LogAction"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v22, "logEpochTimestamp"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "logEpochTimestamp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v22, "f250LogReason"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "f250LogReason"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Laqe;

    const-string v22, "errorMessage"

    const-string v23, "TEXT"

    const/16 v24, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Laqe;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "errorMessage"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Laqi;

    const-string v7, "F250LogEntity"

    invoke-direct {v3, v7, v1, v2, v4}, Laqi;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "F250LogEntity"

    invoke-static {v0, v1}, Lafe;->h(Laqp;Ljava/lang/String;)Laqi;

    move-result-object v0

    invoke-virtual {v3, v0}, Laqi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lnom;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "F250LogEntity(com.google.android.libraries.vision.visionkit.f250.internal.airlock.room.F250LogEntity).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lnom;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_5
    new-instance v0, Lnom;

    invoke-direct {v0, v6, v5}, Lnom;-><init>(ZLjava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
