.class final Lhgz;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfax;
.implements Lfay;


# instance fields
.field final synthetic a:Lhha;


# direct methods
.method public constructor <init>(Lhha;)V
    .locals 0

    iput-object p1, p0, Lhgz;->a:Lhha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bO()V
    .locals 2

    iget-object v0, p0, Lhgz;->a:Lhha;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhha;->c:Z

    invoke-virtual {v0}, Lhha;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lhgz;->a:Lhha;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhha;->c:Z

    invoke-virtual {v0}, Lhha;->a()V

    iget-object v1, v0, Lhha;->a:Lhhc;

    invoke-interface {v1}, Lhhc;->d()V

    iget-object v0, v0, Lhha;->b:Lhhc;

    invoke-interface {v0}, Lhhc;->d()V

    iget-object v0, p0, Lhgz;->a:Lhha;

    invoke-virtual {v0}, Lhha;->h()V

    return-void
.end method
