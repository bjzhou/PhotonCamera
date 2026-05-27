.class public final Ljpj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ligo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljpg;

    invoke-direct {v0}, Ljpg;-><init>()V

    sput-object v0, Ljpj;->b:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "UsageReporting.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljpj;->a:Ligo;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljpl;
    .locals 2

    new-instance v0, Ljde;

    new-instance v1, Ljpi;

    invoke-direct {v1}, Ljpi;-><init>()V

    invoke-direct {v0, p0, v1}, Ljde;-><init>(Landroid/content/Context;Ljpi;)V

    return-object v0
.end method
