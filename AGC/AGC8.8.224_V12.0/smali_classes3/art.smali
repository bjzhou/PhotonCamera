.class final Lart;
.super Lasg;


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lart;->a:Landroid/view/View;

    invoke-direct {p0}, Lasg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasf;)V
    .locals 2

    iget-object v0, p0, Lart;->a:Landroid/view/View;

    sget v1, Lasu;->b:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, Lasf;->y(Lase;)V

    return-void
.end method
