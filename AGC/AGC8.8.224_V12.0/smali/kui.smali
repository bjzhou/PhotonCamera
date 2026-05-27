.class public final Lkui;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lkui;->d:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->e:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->f:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->g:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->h:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->i:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->j:Ljava/lang/Object;

    iput-object p1, p0, Lkui;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkuj;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkui;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null engineType"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;
    .locals 14

    iget-object v0, p0, Lkui;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v13, Ldrd;

    iget-object v1, p0, Lkui;->k:Ljava/lang/Object;

    iget-object v2, p0, Lkui;->i:Ljava/lang/Object;

    iget-object v3, p0, Lkui;->j:Ljava/lang/Object;

    iget-object v4, p0, Lkui;->a:Ljava/lang/Object;

    iget-object v5, p0, Lkui;->h:Ljava/lang/Object;

    iget-object v6, p0, Lkui;->g:Ljava/lang/Object;

    iget-object v7, p0, Lkui;->f:Ljava/lang/Object;

    iget-object v8, p0, Lkui;->b:Ljava/lang/Object;

    iget-object v9, p0, Lkui;->e:Ljava/lang/Object;

    iget-object v10, p0, Lkui;->c:Ljava/lang/Object;

    move-object v12, v10

    check-cast v12, [F

    move-object v11, v9

    check-cast v11, Landroid/graphics/Point;

    move-object v10, v8

    check-cast v10, Landroid/graphics/Point;

    move-object v9, v7

    check-cast v9, Landroid/graphics/Point;

    move-object v8, v6

    check-cast v8, Landroid/graphics/Point;

    move-object v7, v5

    check-cast v7, Landroid/graphics/Point;

    move-object v6, v4

    check-cast v6, Landroid/graphics/Point;

    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v0

    check-cast v2, Landroid/graphics/Rect;

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Ldrd;-><init>(Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;[F)V

    return-object v13

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
