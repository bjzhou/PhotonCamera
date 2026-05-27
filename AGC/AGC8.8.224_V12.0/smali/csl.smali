.class public final Lcsl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsl;->a:Loiw;

    iput-object p2, p0, Lcsl;->b:Loiw;

    iput-object p3, p0, Lcsl;->c:Loiw;

    iput-object p4, p0, Lcsl;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcsk;
    .locals 7

    iget-object v0, p0, Lcsl;->a:Loiw;

    check-cast v0, Lelv;

    invoke-virtual {v0}, Lelv;->a()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcsl;->b:Loiw;

    check-cast v0, Lcsi;

    invoke-virtual {v0}, Lcsi;->a()Lcsh;

    move-result-object v3

    iget-object v0, p0, Lcsl;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lgxb;->q()Landroid/os/Handler;

    move-result-object v5

    iget-object v0, p0, Lcsl;->d:Loiw;

    check-cast v0, Lelp;

    invoke-virtual {v0}, Lelp;->a()Landroid/view/Window;

    move-result-object v6

    new-instance v0, Lcsk;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcsk;-><init>(Landroid/content/ContentResolver;Lcsh;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Landroid/view/Window;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcsl;->a()Lcsk;

    move-result-object v0

    return-object v0
.end method
