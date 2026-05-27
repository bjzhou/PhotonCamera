.class final Lagl;
.super Lagk;


# static fields
.field static final c:Lago;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v0

    sput-object v0, Lagl;->c:Lago;

    return-void
.end method

.method public constructor <init>(Lago;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lagk;-><init>(Lago;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a(I)Lacr;
    .locals 1

    iget-object v0, p0, Lagl;->a:Landroid/view/WindowInsets;

    invoke-static {p1}, Lagn;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lacr;->d(Landroid/graphics/Insets;)Lacr;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/view/View;)V
    .locals 0

    return-void
.end method
