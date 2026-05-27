.class public final synthetic Leyp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/lens/lenslite/api/LinkEventListener;


# instance fields
.field public final synthetic a:Leys;


# direct methods
.method public synthetic constructor <init>(Leys;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyp;->a:Leys;

    return-void
.end method


# virtual methods
.method public final onEvent(II)V
    .locals 3

    iget-object p2, p0, Leyp;->a:Leys;

    iget-object v0, p2, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lbbh;

    const/16 v2, 0x13

    invoke-direct {v1, p2, p1, v2}, Lbbh;-><init>(Leys;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
