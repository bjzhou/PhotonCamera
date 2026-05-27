.class public final Ljpb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljca;

.field public static final b:Ljca;

.field public static final c:Ljca;

.field public static final d:[Ljca;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljca;

    const-string v1, "usage_and_diagnostics_listener"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v0, Ljpb;->a:Ljca;

    new-instance v1, Ljca;

    const-string v4, "usage_and_diagnostics_consents"

    invoke-direct {v1, v4, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v1, Ljpb;->b:Ljca;

    new-instance v4, Ljca;

    const-string v5, "usage_and_diagnostics_settings_access"

    invoke-direct {v4, v5, v2, v3}, Ljca;-><init>(Ljava/lang/String;J)V

    sput-object v4, Ljpb;->c:Ljca;

    const/4 v2, 0x3

    new-array v2, v2, [Ljca;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    sput-object v2, Ljpb;->d:[Ljca;

    return-void
.end method
