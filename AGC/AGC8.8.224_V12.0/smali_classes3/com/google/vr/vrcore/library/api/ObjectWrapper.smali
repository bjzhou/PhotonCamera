.class public final Lcom/google/vr/vrcore/library/api/ObjectWrapper;
.super Lcbf;


# instance fields
.field private final wrappedObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "com.google.vr.vrcore.library.api.IObjectWrapper"

    invoke-direct {p0, v0}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcbf;
    .locals 1

    new-instance v0, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
