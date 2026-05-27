.class public final Llku;
.super Ljava/lang/Object;


# static fields
.field private static final d:Llkt;


# instance fields
.field public volatile a:Llkt;

.field public b:Ljava/util/concurrent/ScheduledFuture;

.field public c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Llkp;->a:Llkp;

    sput-object v0, Llku;->d:Llkt;

    return-void
.end method

.method public constructor <init>(Llhe;Lnox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llku;->d:Llkt;

    iput-object v0, p0, Llku;->a:Llkt;

    new-instance v0, Llkr;

    invoke-direct {v0, p0, p2}, Llkr;-><init>(Llku;Lnox;)V

    invoke-virtual {p1, v0}, Llhe;->a(Llhd;)V

    new-instance v0, Llks;

    invoke-direct {v0, p0, p2}, Llks;-><init>(Llku;Lnox;)V

    invoke-virtual {p1, v0}, Llhe;->a(Llhd;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Llku;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Llku;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Llku;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Llku;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method
