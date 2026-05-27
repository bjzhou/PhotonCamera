.class public final Ljpz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljca;

.field public static final b:Ljca;

.field public static final c:Ljca;

.field public static final d:Ljca;

.field public static final e:Ljca;

.field public static final f:Ljca;

.field public static final g:Ljca;

.field public static final h:Ljca;

.field public static final i:Ljca;

.field public static final j:Ljca;

.field public static final k:Ljca;

.field public static final l:Ljca;

.field public static final m:Ljca;

.field public static final n:Ljca;

.field public static final o:Ljca;

.field public static final p:Ljca;

.field public static final q:Ljca;

.field public static final r:[Ljca;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Ljca;

    const-string v1, "app_client"

    const-wide/16 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ljpz;->a:Ljca;

    new-instance v1, Ljca;

    const-string v4, "carrier_auth"

    const-wide/16 v5, 0x1

    invoke-direct {v1, v4, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v1, Ljpz;->b:Ljca;

    new-instance v4, Ljca;

    const-string v7, "wear3_oem_companion"

    invoke-direct {v4, v7, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v4, Ljpz;->c:Ljca;

    new-instance v7, Ljca;

    const-string v8, "wear_backup_restore"

    invoke-direct {v7, v8, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v7, Ljpz;->d:Ljca;

    new-instance v2, Ljca;

    const-string v3, "wear_consent"

    const-wide/16 v8, 0x2

    invoke-direct {v2, v3, v8, v9}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v2, Ljpz;->e:Ljca;

    new-instance v3, Ljca;

    const-string v10, "wear_consent_recordoptin"

    invoke-direct {v3, v10, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v3, Ljpz;->f:Ljca;

    new-instance v10, Ljca;

    const-string v11, "wear_consent_supervised"

    invoke-direct {v10, v11, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v10, Ljpz;->g:Ljca;

    new-instance v11, Ljca;

    const-string v12, "wear_fast_pair_account_key_sync"

    invoke-direct {v11, v12, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v11, Ljpz;->h:Ljca;

    new-instance v12, Ljca;

    const-string v13, "wear_get_related_configs"

    invoke-direct {v12, v13, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v12, Ljpz;->i:Ljca;

    new-instance v13, Ljca;

    const-string v14, "wear_get_node_id"

    invoke-direct {v13, v14, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v13, Ljpz;->j:Ljca;

    new-instance v14, Ljca;

    const-string v15, "wear_retry_connection"

    invoke-direct {v14, v15, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v14, Ljpz;->k:Ljca;

    new-instance v15, Ljca;

    const-string v8, "wear_set_cloud_sync_setting_by_node"

    invoke-direct {v15, v8, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v15, Ljpz;->l:Ljca;

    new-instance v8, Ljca;

    const-string v9, "wear_update_config"

    invoke-direct {v8, v9, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v8, Ljpz;->m:Ljca;

    new-instance v9, Ljca;

    move-object/from16 v16, v8

    const-string v8, "wear_update_connection_retry_strategy"

    invoke-direct {v9, v8, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v9, Ljpz;->n:Ljca;

    new-instance v8, Ljca;

    move-object/from16 v17, v9

    const-string v9, "wearable_services"

    invoke-direct {v8, v9, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v8, Ljpz;->o:Ljca;

    new-instance v9, Ljca;

    move-object/from16 v18, v8

    const-string v8, "wear_cancel_migration"

    invoke-direct {v9, v8, v5, v6}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v9, Ljpz;->p:Ljca;

    new-instance v5, Ljca;

    const-string v6, "wear_customizable_screens"

    move-object/from16 v19, v9

    const-wide/16 v8, 0x2

    invoke-direct {v5, v6, v8, v9}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v5, Ljpz;->q:Ljca;

    const/16 v6, 0x11

    new-array v6, v6, [Ljca;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v3, v6, v0

    const/4 v0, 0x6

    aput-object v10, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v13, v6, v0

    const/16 v0, 0xa

    aput-object v14, v6, v0

    const/16 v0, 0xb

    aput-object v15, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v5, v6, v0

    sput-object v6, Ljpz;->r:[Ljca;

    return-void
.end method
