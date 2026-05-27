.class final Lihu;
.super Lacl;


# instance fields
.field final synthetic a:Lihx;


# direct methods
.method public constructor <init>(Lihx;)V
    .locals 0

    iput-object p1, p0, Lihu;->a:Lihx;

    invoke-direct {p0}, Lacl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lihu;->a:Lihx;

    iget-object v0, v0, Lihx;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lihu;->a:Lihx;

    iget-object v0, v0, Lihx;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
