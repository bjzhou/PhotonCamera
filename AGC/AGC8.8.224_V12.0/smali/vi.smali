.class public final synthetic Lvi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvi;->a:I

    iput-object p2, p0, Lvi;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    iget v0, p0, Lvi;->a:I

    iget-object v1, p0, Lvi;->b:Ljava/util/concurrent/ThreadFactory;

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    sget-object v3, Lvj;->a:[I

    aget v3, v3, v2

    if-lt v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Lbbh;

    invoke-direct {v2, v0, p1, v4}, Lbbh;-><init>(ILjava/lang/Runnable;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Thread;->setPriority(I)V

    return-object p1
.end method
