.class final Llks;
.super Ljava/lang/Object;

# interfaces
.implements Llhb;


# instance fields
.field final synthetic a:Lnox;

.field final synthetic b:Llku;


# direct methods
.method public constructor <init>(Llku;Lnox;)V
    .locals 0

    iput-object p1, p0, Llks;->b:Llku;

    iput-object p2, p0, Llks;->a:Lnox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Llks;->b:Llku;

    iget-object v0, v0, Llku;->a:Llkt;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Llkt;->a(ILjava/lang/String;)V

    iget-object v0, p0, Llks;->b:Llku;

    invoke-virtual {v0}, Llku;->a()V

    iget-object v0, p0, Llks;->b:Llku;

    iget-object v1, p0, Llks;->a:Lnox;

    new-instance v2, Llkq;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Llkq;-><init>(Llks;Ljava/lang/String;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-interface {v1, v2, v3, v4, p1}, Lnox;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object p1

    iput-object p1, v0, Llku;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
