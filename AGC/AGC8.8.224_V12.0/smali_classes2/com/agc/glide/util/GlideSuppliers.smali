.class public final Lcom/agc/glide/util/GlideSuppliers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static memorize(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "TT;>;)",
            "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/util/GlideSuppliers$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/util/GlideSuppliers$1;-><init>(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)V

    return-object v0
.end method
