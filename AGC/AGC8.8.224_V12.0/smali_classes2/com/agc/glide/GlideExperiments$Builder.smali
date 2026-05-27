.class final Lcom/agc/glide/GlideExperiments$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/GlideExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final experiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/GlideExperiments$Experiment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/glide/GlideExperiments$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/agc/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public add(Lcom/agc/glide/GlideExperiments$Experiment;)Lcom/agc/glide/GlideExperiments$Builder;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/agc/glide/GlideExperiments;
    .locals 1

    new-instance v0, Lcom/agc/glide/GlideExperiments;

    invoke-direct {v0, p0}, Lcom/agc/glide/GlideExperiments;-><init>(Lcom/agc/glide/GlideExperiments$Builder;)V

    return-object v0
.end method

.method public update(Lcom/agc/glide/GlideExperiments$Experiment;Z)Lcom/agc/glide/GlideExperiments$Builder;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/agc/glide/GlideExperiments$Builder;->add(Lcom/agc/glide/GlideExperiments$Experiment;)Lcom/agc/glide/GlideExperiments$Builder;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/agc/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
