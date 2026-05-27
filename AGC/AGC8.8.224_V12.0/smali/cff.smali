.class final Lcff;
.super Ljava/lang/Object;

# interfaces
.implements Lceq;


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldgs;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    invoke-interface {p1}, Ldhi;->e()V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljwb;
    .locals 2

    new-instance v0, Ljvk;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
