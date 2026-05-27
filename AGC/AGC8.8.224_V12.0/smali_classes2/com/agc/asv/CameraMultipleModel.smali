.class Lcom/agc/asv/CameraMultipleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field camera:Lcom/agc/Camera;

.field drawableRes:I

.field id:Ljava/lang/String;

.field index:I

.field text:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Lcom/agc/Camera;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/CameraMultipleModel;->camera:Lcom/agc/Camera;

    iput p2, p0, Lcom/agc/asv/CameraMultipleModel;->type:I

    iput-object p3, p0, Lcom/agc/asv/CameraMultipleModel;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    iput p5, p0, Lcom/agc/asv/CameraMultipleModel;->drawableRes:I

    iput p6, p0, Lcom/agc/asv/CameraMultipleModel;->index:I

    return-void
.end method
