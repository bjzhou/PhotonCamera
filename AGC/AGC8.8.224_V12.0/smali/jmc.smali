.class public final Ljmc;
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

.field public static final l:[Ljca;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Ljca;

    const-string v1, "name_ulr_private"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ljmc;->a:Ljca;

    new-instance v1, Ljca;

    const-string v4, "name_sleep_segment_request"

    invoke-direct {v1, v4, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v1, Ljmc;->b:Ljca;

    new-instance v4, Ljca;

    const-string v5, "get_last_activity_feature_id"

    invoke-direct {v4, v5, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v4, Ljmc;->c:Ljca;

    new-instance v5, Ljca;

    const-string v6, "support_context_feature_id"

    invoke-direct {v5, v6, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v5, Ljmc;->d:Ljca;

    new-instance v6, Ljca;

    const-string v7, "get_current_location"

    const-wide/16 v8, 0x2

    invoke-direct {v6, v7, v8, v9}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v6, Ljmc;->e:Ljca;

    new-instance v7, Ljca;

    const-string v8, "get_last_location_with_request"

    invoke-direct {v7, v8, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v7, Ljmc;->f:Ljca;

    new-instance v8, Ljca;

    const-string v9, "set_mock_mode_with_callback"

    invoke-direct {v8, v9, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v8, Ljmc;->g:Ljca;

    new-instance v9, Ljca;

    const-string v10, "set_mock_location_with_callback"

    invoke-direct {v9, v10, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v9, Ljmc;->h:Ljca;

    new-instance v10, Ljca;

    const-string v11, "inject_location_with_callback"

    invoke-direct {v10, v11, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v10, Ljmc;->i:Ljca;

    new-instance v11, Ljca;

    const-string v12, "location_updates_with_callback"

    invoke-direct {v11, v12, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v11, Ljmc;->j:Ljca;

    new-instance v12, Ljca;

    const-string v13, "use_safe_parcelable_in_intents"

    invoke-direct {v12, v13, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v12, Ljmc;->k:Ljca;

    const/16 v2, 0xb

    new-array v2, v2, [Ljca;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v11, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    sput-object v2, Ljmc;->l:[Ljca;

    return-void
.end method
