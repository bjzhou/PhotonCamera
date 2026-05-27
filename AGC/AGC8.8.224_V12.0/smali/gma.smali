.class public final synthetic Lgma;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Lgfz;

.field public final synthetic c:I

.field public final synthetic d:Ljuf;


# direct methods
.method public synthetic constructor <init>(Ljuf;Lnph;Lgfz;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgma;->d:Ljuf;

    iput-object p2, p0, Lgma;->a:Lnph;

    iput-object p3, p0, Lgma;->b:Lgfz;

    iput p4, p0, Lgma;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lgma;->d:Ljuf;

    iget-object v1, p0, Lgma;->a:Lnph;

    iget-object v2, p0, Lgma;->b:Lgfz;

    iget v3, p0, Lgma;->c:I

    invoke-static {v0, v1}, Lbze;->ag(Ljuf;Ljava/util/concurrent/Future;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v4, Lgmb;

    invoke-direct {v4, v0, v3, v1, v2}, Lgmb;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILnph;Lgfz;)V

    invoke-virtual {v2, v4}, Lgfz;->n(Lkfg;)V

    return-void
.end method
