.class public abstract Lcom/agc/glide/module/AppGlideModule;
.super Lcom/agc/glide/module/LibraryGlideModule;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/module/AppliesOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/module/LibraryGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/agc/glide/GlideBuilder;)V
    .locals 0

    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
