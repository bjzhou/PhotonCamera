.class Lgo/Seq$GoRefQueue;
.super Ljava/lang/ref/ReferenceQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoRefQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue<",
        "Lgo/Seq$GoObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final refs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lgo/Seq$GoRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lgo/Seq$GoRefQueue;->refs:Ljava/util/Collection;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgo/Seq$GoRefQueue$1;

    invoke-direct {v1, p0}, Lgo/Seq$GoRefQueue$1;-><init>(Lgo/Seq$GoRefQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v1, "GoRefQueue Finalizer Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$200(Lgo/Seq$GoRefQueue;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lgo/Seq$GoRefQueue;->refs:Ljava/util/Collection;

    return-object p0
.end method


# virtual methods
.method public track(ILgo/Seq$GoObject;)V
    .locals 2

    iget-object v0, p0, Lgo/Seq$GoRefQueue;->refs:Ljava/util/Collection;

    new-instance v1, Lgo/Seq$GoRef;

    invoke-direct {v1, p1, p2, p0}, Lgo/Seq$GoRef;-><init>(ILgo/Seq$GoObject;Lgo/Seq$GoRefQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
