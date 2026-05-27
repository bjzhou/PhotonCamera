.class public final Laay;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Z

.field public c:Z

.field public d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:Ljava/lang/CharSequence;

.field public final f:Landroid/app/PendingIntent;

.field private g:Landroidx/core/graphics/drawable/IconCompat;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 5

    const v0, 0x7f08016a

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Laay;->c:Z

    iput-object v0, p0, Laay;->g:Landroidx/core/graphics/drawable/IconCompat;

    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->b:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroidx/core/graphics/drawable/IconCompat;->c:Ljava/lang/Object;

    invoke-static {v3}, Lacz;->b(Ljava/lang/Object;)I

    move-result v3

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v0

    iput v0, p0, Laay;->d:I

    :cond_1
    invoke-static {p1}, Labb;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Laay;->e:Ljava/lang/CharSequence;

    iput-object p2, p0, Laay;->f:Landroid/app/PendingIntent;

    iput-object v1, p0, Laay;->a:Landroid/os/Bundle;

    iput-boolean v2, p0, Laay;->b:Z

    iput-boolean v2, p0, Laay;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    iget-object v0, p0, Laay;->g:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Laay;->d:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->b(I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Laay;->g:Landroidx/core/graphics/drawable/IconCompat;

    :cond_0
    iget-object v0, p0, Laay;->g:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method
