.class public final Ljnj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljca;

.field public static final b:Ljca;

.field public static final c:Ljca;

.field public static final d:Ljca;

.field public static final e:Ljca;

.field public static final f:Ljca;

.field public static final g:[Ljca;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljca;

    const-string v1, "set_dimensions_api"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ljnj;->a:Ljca;

    new-instance v1, Ljca;

    const-string v4, "get_serving_version_api"

    invoke-direct {v1, v4, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v1, Ljnj;->b:Ljca;

    new-instance v4, Ljca;

    const-string v5, "get_experiment_tokens_api"

    invoke-direct {v4, v5, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v4, Ljnj;->c:Ljca;

    new-instance v5, Ljca;

    const-string v6, "sync_after_api"

    invoke-direct {v5, v6, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v5, Ljnj;->d:Ljca;

    new-instance v6, Ljca;

    const-string v7, "sync_after_for_application_api"

    invoke-direct {v6, v7, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v6, Ljnj;->e:Ljca;

    new-instance v7, Ljca;

    const-string v8, "set_runtime_properties_api"

    invoke-direct {v7, v8, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v7, Ljnj;->f:Ljca;

    const/4 v2, 0x6

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

    sput-object v2, Ljnj;->g:[Ljca;

    return-void
.end method
