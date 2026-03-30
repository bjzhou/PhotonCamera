.class Landroid/support/v8/renderscript/ScriptGroup$Builder$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/ScriptGroup$Builder;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->this$0:Landroid/support/v8/renderscript/ScriptGroup$Builder;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CWMuUuyZoWLwhdrS(Landroid/support/v8/renderscript/ScriptGroup$Builder$1;Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public compare(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    sub-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Node;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;->CWMuUuyZoWLwhdrS(Landroid/support/v8/renderscript/ScriptGroup$Builder$1;Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    check-cast p1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
