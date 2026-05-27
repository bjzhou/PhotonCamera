.class public final Lcpc;
.super Ljava/lang/Object;

# interfaces
.implements Lcqt;


# instance fields
.field private final a:Lcqv;

.field private final b:Logd;

.field private final c:Logd;


# direct methods
.method public constructor <init>(Logd;Logd;Lcqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcpc;->a:Lcqv;

    iput-object p1, p0, Lcpc;->b:Logd;

    iput-object p2, p0, Lcpc;->c:Logd;

    return-void
.end method

.method private final c()Lcqt;
    .locals 2

    iget-object v0, p0, Lcpc;->a:Lcqv;

    invoke-interface {v0}, Lcqv;->a()Lika;

    move-result-object v0

    sget-object v1, Lika;->i:Lika;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcpc;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcpc;->c:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqt;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-direct {p0}, Lcpc;->c()Lcqt;

    move-result-object v0

    invoke-interface {v0}, Lcqt;->a()V

    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcpc;->c()Lcqt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcqt;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
