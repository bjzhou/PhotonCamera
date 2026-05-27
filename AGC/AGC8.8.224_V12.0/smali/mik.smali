.class final Lmik;
.super Latc;


# instance fields
.field final synthetic b:Lmil;


# direct methods
.method public constructor <init>(Lmil;)V
    .locals 0

    iput-object p1, p0, Lmik;->b:Lmil;

    invoke-direct {p0}, Latc;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Lmik;->b:Lmil;

    iget-boolean v0, p1, Lmil;->c:Z

    if-nez v0, :cond_0

    iget v0, p1, Lmil;->d:I

    invoke-virtual {p1, v0}, Lmil;->setVisibility(I)V

    :cond_0
    return-void
.end method
