.class public final synthetic Lioh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/oliveoil/bufferflinger/BufferFlinger$OnBufferReleasedListener;


# instance fields
.field public final synthetic a:Ljuf;


# direct methods
.method public synthetic constructor <init>(Ljuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lioh;->a:Ljuf;

    return-void
.end method


# virtual methods
.method public final onBufferReleased()V
    .locals 1

    iget-object v0, p0, Lioh;->a:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method
