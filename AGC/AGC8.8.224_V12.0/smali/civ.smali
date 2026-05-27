.class public final Lciv;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lciv;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lnow;
    .locals 2

    iget-object v0, p0, Lciv;->a:Loiw;

    check-cast v0, Lciw;

    invoke-virtual {v0}, Lciw;->a()Lnox;

    move-result-object v0

    sget-object v1, Lcis;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lciv;->a()Lnow;

    move-result-object v0

    return-object v0
.end method
