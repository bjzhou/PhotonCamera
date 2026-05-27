.class public final Lcjh;
.super Ljava/lang/Object;

# interfaces
.implements Ljui;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;

.field public final c:Ljava/lang/ThreadLocal;

.field public final d:Ljava/util/ArrayList;

.field private final e:Ljui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/async/mainthread/EagerMainThreadExecutor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcjh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljui;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcjg;

    invoke-direct {v0}, Lcjg;-><init>()V

    iput-object v0, p0, Lcjh;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcjh;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcjh;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcjh;->e:Ljui;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcjh;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcjh;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcjh;->e:Ljui;

    new-instance v0, Lcdw;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcdw;-><init>(Lcjh;I)V

    invoke-interface {p1, v0}, Ljui;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcjh;->e:Ljui;

    invoke-interface {v0, p1}, Ljui;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
