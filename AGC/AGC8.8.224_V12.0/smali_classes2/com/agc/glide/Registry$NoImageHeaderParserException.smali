.class public final Lcom/agc/glide/Registry$NoImageHeaderParserException;
.super Lcom/agc/glide/Registry$MissingComponentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/Registry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoImageHeaderParserException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lcom/agc/glide/Registry$MissingComponentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
