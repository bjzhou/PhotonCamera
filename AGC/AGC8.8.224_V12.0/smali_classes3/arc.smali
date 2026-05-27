.class public final Larc;
.super Ljava/lang/Object;

# interfaces
.implements Laqt;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Laqq;

.field public final d:Z

.field public final e:Z

.field public final f:Loja;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laqq;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larc;->a:Landroid/content/Context;

    iput-object p2, p0, Larc;->b:Ljava/lang/String;

    iput-object p3, p0, Larc;->c:Laqq;

    iput-boolean p4, p0, Larc;->d:Z

    iput-boolean p5, p0, Larc;->e:Z

    new-instance p1, Lpo;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lpo;-><init>(Larc;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Larc;->f:Loja;

    return-void
.end method


# virtual methods
.method public final a()Laqp;
    .locals 1

    invoke-virtual {p0}, Larc;->b()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->b()Laqp;

    move-result-object v0

    return-object v0
.end method

.method public final b()Larb;
    .locals 1

    iget-object v0, p0, Larc;->f:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larb;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Larc;->f:Loja;

    invoke-interface {v0}, Loja;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Larc;->b()Larb;

    move-result-object v0

    invoke-virtual {v0}, Larb;->close()V

    :cond_0
    return-void
.end method
