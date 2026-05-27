.class public final synthetic Lgmg;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field public final synthetic a:Lkli;

.field public final synthetic b:Lftj;

.field public final synthetic c:Lika;

.field public final synthetic d:Ldhi;

.field public final synthetic e:Lmqp;

.field public final synthetic f:Ldja;


# direct methods
.method public synthetic constructor <init>(Lkli;Ldja;Lftj;Lika;Ldhi;Lmqp;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmg;->a:Lkli;

    iput-object p2, p0, Lgmg;->f:Ldja;

    iput-object p3, p0, Lgmg;->b:Lftj;

    iput-object p4, p0, Lgmg;->c:Lika;

    iput-object p5, p0, Lgmg;->d:Ldhi;

    iput-object p6, p0, Lgmg;->e:Lmqp;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Lgmg;->a:Lkli;

    iget-object v0, p0, Lgmg;->f:Ldja;

    iget-object v2, p0, Lgmg;->b:Lftj;

    iget-object v3, p0, Lgmg;->c:Lika;

    iget-object v4, p0, Lgmg;->d:Ldhi;

    iget-object v5, p0, Lgmg;->e:Lmqp;

    invoke-interface {v1}, Lkli;->r()Ljava/util/List;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lewq;->h(Ldja;Lkli;Lftj;Lika;Ldhi;Lmqp;Z)Lkfl;

    move-result-object v0

    return-object v0
.end method
