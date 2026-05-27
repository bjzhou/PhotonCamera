.class Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->posInOwnerList:I

    iput p2, p0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->currentPos:I

    iput-boolean p3, p0, Lcom/agc/widget/recyclerview/DiffUtil$PostponedUpdate;->removal:Z

    return-void
.end method
