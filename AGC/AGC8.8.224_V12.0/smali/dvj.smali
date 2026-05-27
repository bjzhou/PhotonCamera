.class public final Ldvj;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldvd;->a:Ldvd;

    sput-object v0, Ldvj;->a:Ldve;

    return-void
.end method

.method public static a(Ldsx;)Ldvi;
    .locals 1

    new-instance v0, Ldvi;

    invoke-direct {v0, p0}, Ldvi;-><init>(Ldsx;)V

    return-object v0
.end method
