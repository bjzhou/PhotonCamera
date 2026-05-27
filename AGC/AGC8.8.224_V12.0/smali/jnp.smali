.class public final Ljnp;
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

    new-instance v0, Ljno;

    invoke-direct {v0}, Ljno;-><init>()V

    sput-object v0, Ljnp;->b:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "Phenotype.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljnp;->a:Ligo;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljns;
    .locals 1

    new-instance v0, Ljns;

    invoke-direct {v0, p0}, Ljns;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
