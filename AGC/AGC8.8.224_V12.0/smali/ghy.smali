.class public final Lghy;
.super Ljava/lang/Object;

# interfaces
.implements Lgam;


# instance fields
.field final synthetic a:Lgam;

.field final synthetic b:Lkef;


# direct methods
.method public constructor <init>(Lgam;Lkef;)V
    .locals 0

    iput-object p1, p0, Lghy;->a:Lgam;

    iput-object p2, p0, Lghy;->b:Lkef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lghy;->a:Lgam;

    invoke-interface {v0}, Lgam;->a()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lghy;->a:Lgam;

    invoke-interface {v0}, Lgam;->b()Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lgal;Lgkr;)V
    .locals 1

    iget-object v0, p0, Lghy;->a:Lgam;

    invoke-interface {v0, p1, p2}, Lgam;->c(Lgal;Lgkr;)V

    iget-object p1, p0, Lghy;->b:Lkef;

    invoke-interface {p1}, Lkef;->p()Z

    return-void
.end method
