.class public final Lkbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lkbc;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkbc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkbi;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lkbi;->b:Lkbc;

    iput-object p3, p0, Lkbi;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lkbi;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkbi;->b:Lkbc;

    iget-object v2, p0, Lkbi;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
