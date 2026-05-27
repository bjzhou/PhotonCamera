.class public final Liyf;
.super Ljava/lang/Object;

# interfaces
.implements Liyi;


# instance fields
.field private final a:Landroidx/wear/widget/CurvedTextView;


# direct methods
.method public constructor <init>(Landroidx/wear/widget/CurvedTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liyf;->a:Landroidx/wear/widget/CurvedTextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Liyf;->a:Landroidx/wear/widget/CurvedTextView;

    return-object v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Liyf;->a:Landroidx/wear/widget/CurvedTextView;

    const-string v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    iput-object v1, v0, Landroidx/wear/widget/CurvedTextView;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/wear/widget/CurvedTextView;->f()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Liyf;->a:Landroidx/wear/widget/CurvedTextView;

    iput p1, v0, Landroidx/wear/widget/CurvedTextView;->c:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/wear/widget/CurvedTextView;->a:Z

    invoke-virtual {v0}, Landroidx/wear/widget/CurvedTextView;->postInvalidate()V

    return-void
.end method
