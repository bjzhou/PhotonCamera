.class public final Ljul;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final a:Ljuh;


# instance fields
.field public final b:Ljuh;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljuh;

    sget-object v1, Ljuh;->a:Ljui;

    invoke-direct {v0, v1}, Ljuh;-><init>(Ljui;)V

    sput-object v0, Ljul;->a:Ljuh;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    sget-object v0, Ljul;->a:Ljuh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljul;->b:Ljuh;

    iput-object p1, p0, Ljul;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Ljul;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lbsc;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lbsc;-><init>(Ljul;Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
