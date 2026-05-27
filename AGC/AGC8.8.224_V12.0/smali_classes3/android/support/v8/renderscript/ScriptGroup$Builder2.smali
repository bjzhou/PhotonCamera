.class public final Landroid/support/v8/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;

.field mInputs:Ljava/util/List;

.field mRS:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    return-void
.end method

.method private addInvokeInternal(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 2

    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$Closure;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    iget-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addKernelInternal(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 7

    new-instance v6, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptGroup$Closure;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    iget-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    instance-of v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length p2, p1

    if-ge v1, p2, :cond_2

    aget-object p2, p1, v1

    instance-of v2, p2, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    if-nez v2, :cond_1

    return v0

    :cond_1
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Binding;

    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Binding;->getField()Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addInput()Landroid/support/v8/renderscript/ScriptGroup$Input;
    .locals 2

    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Input;

    invoke-direct {v0}, Landroid/support/v8/renderscript/ScriptGroup$Input;-><init>()V

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs addInvoke(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object p1

    return-object p1
.end method

.method public varargs addKernel(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;)Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p3, v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Ljava/lang/String;[Landroid/support/v8/renderscript/ScriptGroup$Future;)Landroid/support/v8/renderscript/ScriptGroup;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const-string v0, "[^a-zA-Z0-9-]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    iget-object v5, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/support/v8/renderscript/ScriptGroup$Future;)V

    return-object v0

    :cond_0
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string p2, "invalid script group name"

    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
