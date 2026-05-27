.class public final synthetic Ldrq;
.super Ljava/lang/Object;

# interfaces
.implements Lnut;


# instance fields
.field public final synthetic a:Ldru;


# direct methods
.method public synthetic constructor <init>(Ldru;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrq;->a:Ldru;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mediapipe/framework/TextureFrame;)V
    .locals 1

    iget-object v0, p0, Ldrq;->a:Ldru;

    invoke-virtual {v0, p1}, Ldru;->d(Lcom/google/mediapipe/framework/TextureFrame;)V

    return-void
.end method
