.class final Lmjr;
.super Lacl;


# instance fields
.field final synthetic a:Lmjs;

.field final synthetic b:Lbza;


# direct methods
.method public constructor <init>(Lmjs;Lbza;[B)V
    .locals 0

    iput-object p1, p0, Lmjr;->a:Lmjs;

    iput-object p2, p0, Lmjr;->b:Lbza;

    invoke-direct {p0}, Lacl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lmjr;->a:Lmjs;

    iget v1, v0, Lmjs;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lmjs;->k:Landroid/graphics/Typeface;

    iget-object p1, p0, Lmjr;->a:Lmjs;

    invoke-static {p1}, Lmjs;->b(Lmjs;)V

    iget-object p1, p0, Lmjr;->b:Lbza;

    iget-object v0, p0, Lmjr;->a:Lmjs;

    iget-object v0, v0, Lmjs;->k:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lbza;->e(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lmjr;->a:Lmjs;

    invoke-static {v0}, Lmjs;->b(Lmjs;)V

    iget-object v0, p0, Lmjr;->b:Lbza;

    invoke-virtual {v0}, Lbza;->f()V

    return-void
.end method
