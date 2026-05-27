.class public final Landroid/support/v8/renderscript/ScriptGroup$Binding;
.super Ljava/lang/Object;


# instance fields
.field private final mField:Landroid/support/v8/renderscript/Script$FieldID;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mField:Landroid/support/v8/renderscript/Script$FieldID;

    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getField()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 1

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mField:Landroid/support/v8/renderscript/Script$FieldID;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    return-object v0
.end method
