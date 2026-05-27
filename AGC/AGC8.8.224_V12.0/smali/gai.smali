.class public final Lgai;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# instance fields
.field private final a:Lgam;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lgam;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgai;->a:Lgam;

    iput p2, p0, Lgai;->c:I

    iput-boolean p3, p0, Lgai;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lgai;->a:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgai;->a:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 2

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->k()Lhjc;

    move-result-object v0

    iget-boolean v1, p0, Lgai;->b:Z

    check-cast v0, Lhjd;

    iput-boolean v1, v0, Lhjd;->c:Z

    iget-object v0, p2, Lgkr;->c:Ljava/lang/Object;

    iget v1, p0, Lgai;->c:I

    invoke-interface {v0, v1}, Lgxl;->ab(I)V

    iget-object v0, p0, Lgai;->a:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Lgai;->a:Lgam;

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
