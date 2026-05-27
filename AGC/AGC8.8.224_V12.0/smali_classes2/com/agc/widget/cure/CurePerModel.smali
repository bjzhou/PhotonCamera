.class Lcom/agc/widget/cure/CurePerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/cure/CurePerModel;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/widget/cure/CurePerModel;->array:Ljava/util/List;

    return-void
.end method
