.class public Landroid/support/v8/renderscript/Byte4;
.super Ljava/lang/Object;


# instance fields
.field public w:B

.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BBBB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/support/v8/renderscript/Byte4;->x:B

    iput-byte p2, p0, Landroid/support/v8/renderscript/Byte4;->y:B

    iput-byte p3, p0, Landroid/support/v8/renderscript/Byte4;->z:B

    iput-byte p4, p0, Landroid/support/v8/renderscript/Byte4;->w:B

    return-void
.end method
