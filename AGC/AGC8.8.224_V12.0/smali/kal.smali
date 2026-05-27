.class public abstract Lkal;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CAM_"

    iput-object v0, p0, Lkal;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    iput v0, p0, Lkal;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)Lkam;
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
