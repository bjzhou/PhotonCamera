.class final Lkaw;
.super Ljava/lang/Object;

# interfaces
.implements Lkbf;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Empty msg."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iput p1, p0, Lkaw;->a:I

    iput-object p2, p0, Lkaw;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lkaw;->c:Ljava/lang/String;

    iget v1, p0, Lkaw;->a:I

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
