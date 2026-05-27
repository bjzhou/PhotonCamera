.class public final synthetic Ldxv;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final synthetic a:Ldxw;

.field public final synthetic b:Lfgg;

.field public final synthetic c:Ldxl;

.field public final synthetic d:Ldye;

.field public final synthetic e:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;


# direct methods
.method public synthetic constructor <init>(Ldxw;Lfgg;Ldxl;Ldye;Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxv;->a:Ldxw;

    iput-object p2, p0, Ldxv;->b:Lfgg;

    iput-object p3, p0, Ldxv;->c:Ldxl;

    iput-object p4, p0, Ldxv;->d:Ldye;

    iput-object p5, p0, Ldxv;->e:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Ldxv;->a:Ldxw;

    iget-object v1, p0, Ldxv;->b:Lfgg;

    iget-object v2, p0, Ldxv;->c:Ldxl;

    iget-object v3, p0, Ldxv;->d:Ldye;

    iget-object v4, p0, Ldxv;->e:Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;

    invoke-virtual {v0, v1, v2, v3, v4}, Ldxw;->d(Lfgg;Ldxl;Ldye;Lcom/google/android/libraries/vision/smartcapture/FrequentFacesProcessor;)V

    return-void
.end method
