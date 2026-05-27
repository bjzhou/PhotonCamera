.class public final Lmlt;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Integer;

.field public e:Z

.field private final f:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(IIILjava/lang/Integer;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmlt;->e:Z

    iput p1, p0, Lmlt;->a:I

    iput p2, p0, Lmlt;->b:I

    iput p3, p0, Lmlt;->c:I

    iput-object p4, p0, Lmlt;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lmlt;->f:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lmlt;->b()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final b()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lmlt;->f:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
