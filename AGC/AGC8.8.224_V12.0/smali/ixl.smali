.class public final synthetic Lixl;
.super Ljava/lang/Object;

# interfaces
.implements Lqv;


# static fields
.field public static final synthetic a:Lixl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lixl;

    invoke-direct {v0}, Lixl;-><init>()V

    sput-object v0, Lixl;->a:Lixl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lixt;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, v1, p1}, Lixt;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lixt;->b:Z

    iput-boolean p1, v0, Lixt;->c:Z

    return-object v0
.end method
