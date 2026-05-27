.class public final Llpg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llpg;->a:Z

    return-void
.end method

.method public constructor <init>(Lkoe;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lkoe;->c:Z

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p2}, Ldhi;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Llpg;->a:Z

    iget-boolean v0, p1, Lkoe;->c:Z

    sget-object v0, Ldho;->bp:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    iget-boolean p1, p1, Lkoe;->c:Z

    return-void
.end method

.method public constructor <init>(Llph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Llph;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llpg;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llpg;->a:Z

    return-void
.end method

.method public constructor <init>(Z[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llpg;->a:Z

    return-void
.end method
