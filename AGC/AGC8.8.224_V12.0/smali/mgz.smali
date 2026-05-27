.class public final Lmgz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Lmgy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmgz;->b:Z

    iput v0, p0, Lmgz;->c:I

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lmgz;->a:Landroid/view/View;

    return-void
.end method
