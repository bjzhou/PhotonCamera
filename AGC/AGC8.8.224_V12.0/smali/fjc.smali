.class public final synthetic Lfjc;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Lgej;

.field public final synthetic b:Lgeh;

.field public final synthetic c:Z

.field public final synthetic d:Ldhi;

.field public final synthetic e:Lfkz;

.field public final synthetic f:Ljew;


# direct methods
.method public synthetic constructor <init>(Lgej;Lgeh;Ljew;ZLdhi;Lfkz;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjc;->a:Lgej;

    iput-object p2, p0, Lfjc;->b:Lgeh;

    iput-object p3, p0, Lfjc;->f:Ljew;

    iput-boolean p4, p0, Lfjc;->c:Z

    iput-object p5, p0, Lfjc;->d:Ldhi;

    iput-object p6, p0, Lfjc;->e:Lfkz;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lfjc;->a:Lgej;

    iget-object v1, p0, Lfjc;->b:Lgeh;

    iget-object v2, p0, Lfjc;->f:Ljew;

    iget-boolean v3, p0, Lfjc;->c:Z

    iget-object v4, p0, Lfjc;->d:Ldhi;

    iget-object v5, p0, Lfjc;->e:Lfkz;

    check-cast p1, Lgej;

    invoke-virtual {p1, v0}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v1}, Lgeh;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgec;->p:Lgec;

    invoke-interface {v1, p1}, Lgeh;->A(Lgec;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "micro_tutorial_dismiss"

    invoke-virtual {v2, p1}, Ljew;->X(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    if-nez v3, :cond_0

    sget-object p1, Ldho;->bg:Ldhj;

    invoke-interface {v4, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Ldhv;->q:Ldhj;

    invoke-interface {v4, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Lfkz;->a()V

    :cond_0
    return-void
.end method
