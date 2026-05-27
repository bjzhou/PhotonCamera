.class final Lmij;
.super Latc;


# instance fields
.field final synthetic b:Lmil;


# direct methods
.method public constructor <init>(Lmil;)V
    .locals 0

    iput-object p1, p0, Lmij;->b:Lmil;

    invoke-direct {p0}, Latc;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p1, p0, Lmij;->b:Lmil;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmil;->setIndeterminate(Z)V

    iget-object p1, p0, Lmij;->b:Lmil;

    iget v0, p1, Lmil;->b:I

    invoke-virtual {p1, v0}, Lmil;->g(I)V

    return-void
.end method
