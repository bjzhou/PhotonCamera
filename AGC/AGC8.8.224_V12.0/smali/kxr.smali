.class public final Lkxr;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkxr;->a:I

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lkxr;->b:Ljava/lang/Object;

    iput p1, p0, Lkxr;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lkxr;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    iput p2, p0, Lkxr;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    iput p2, p0, Lkxr;->a:I

    return-void
.end method

.method public constructor <init>(Ljby;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    iput p2, p0, Lkxr;->a:I

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkxr;-><init>(Lmqp;I)V

    return-void
.end method

.method public constructor <init>(Lmqp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxr;->b:Ljava/lang/Object;

    iput p2, p0, Lkxr;->a:I

    return-void
.end method
