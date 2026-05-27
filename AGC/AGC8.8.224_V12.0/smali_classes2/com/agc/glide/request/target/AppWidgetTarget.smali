.class public Lcom/agc/glide/request/target/AppWidgetTarget;
.super Lcom/agc/glide/request/target/CustomTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final remoteViews:Landroid/widget/RemoteViews;

.field private final viewId:I

.field private final widgetIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/agc/glide/request/target/CustomTarget;-><init>(II)V

    const-string p2, "Context can not be null!"

    invoke-static {p1, p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    const-string p1, "RemoteViews object can not be null!"

    invoke-static {p5, p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    const-string p1, "ComponentName can not be null!"

    invoke-static {p6, p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->viewId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->widgetIds:[I

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;[I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/agc/glide/request/target/CustomTarget;-><init>(II)V

    array-length p2, p6

    if-eqz p2, :cond_0

    const-string p2, "Context can not be null!"

    invoke-static {p1, p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    const-string p1, "RemoteViews object can not be null!"

    invoke-static {p5, p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    const-string p1, "WidgetIds can not be null!"

    invoke-static {p6, p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->widgetIds:[I

    iput p4, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->viewId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WidgetIds must have length > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V
    .locals 7

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/agc/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;[I)V
    .locals 7

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/agc/glide/request/target/AppWidgetTarget;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;[I)V

    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget v1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->viewId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/agc/glide/request/target/AppWidgetTarget;->update()V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->widgetIds:[I

    iget-object v2, p0, Lcom/agc/glide/request/target/AppWidgetTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/glide/request/target/AppWidgetTarget;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/agc/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/agc/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/agc/glide/request/target/AppWidgetTarget;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/request/target/AppWidgetTarget;->onResourceReady(Landroid/graphics/Bitmap;Lcom/agc/glide/request/transition/Transition;)V

    return-void
.end method
