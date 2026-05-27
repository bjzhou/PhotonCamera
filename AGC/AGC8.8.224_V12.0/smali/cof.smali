.class public Lcof;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;
.implements Lfaz;


# instance fields
.field private final a:Ljuh;

.field public final f:Landroid/content/Context;

.field protected final g:Ljava/util/concurrent/Executor;

.field protected final h:Ljava/lang/String;

.field public final i:Lezx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljuh;Lezx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcof;->f:Landroid/content/Context;

    iput-object p2, p0, Lcof;->g:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcof;->a:Ljuh;

    iput-object p4, p0, Lcof;->i:Lezx;

    const-string p1, "camera/"

    invoke-virtual {p1, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcof;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lcof;->f:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    const v1, 0x14f8dcef

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    const v1, 0x9ce409

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    const v1, 0xcee2684

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcof;->a:Ljuh;

    new-instance v1, Lclr;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcof;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
